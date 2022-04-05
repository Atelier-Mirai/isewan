// asset_path は使えない

$('#vegas-slider').vegas({
  overlay: true,
  transition: 'blur',
  transitionDuration: 2000,
  delay: 10000,
  animationDuration: 20000,
  animation: 'kenburns',
  slides: [{ src: "#{asset_path 'vegas1.webp'}"},
           { src: "#{asset_path 'vegas2.webp'}"},
           { src: "#{asset_path 'vegas3.webp'}"},
           { src: "#{asset_path 'vegas4.webp'}"},
           { src: "#{asset_path 'vegas5.webp'}"}]
  // slides: [{ src: './images/vegas1.webp'},
  //          { src: './images/vegas2.webp'},
  //          { src: './images/vegas3.webp'},
  //          { src: './images/vegas4.webp'},
  //          { src: './images/vegas5.webp'}]
});
