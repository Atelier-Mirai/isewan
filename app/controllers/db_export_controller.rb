class DbExportController < ApplicationController
  # before_action :require_login

  def index
    # unless logged_in?
    #   redirect_back_or_to login_path
    # end

    klasses = %w(Article Event Gallery Link Photo Winner)

    File.open("./db/db_export.txt", "w") do |f|
      klasses.each do |klass|
        f.puts("#{klass}.destroy_all")
      end

      klasses.each do |klass|
        k            = klass.constantize
        column_names = klass.constantize.column_names
        k.all.each do |item|
          data = ""
          column_names.each do |attr|
            next if attr == "id"
            data << "#{attr}: \'#{item.send(attr)}\', "
          end
          f.puts("#{klass}.create(#{data[0..-3]})")
        end
      end
    end

    send_data(File.read("./db/db_export.txt"), filename: "seeds.db")
    File.delete("./db/db_export.txt")
  end
end
