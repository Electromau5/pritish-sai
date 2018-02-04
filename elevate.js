$(function() {
  return $('.zoom').elevateZoom({
    gallery: 'gallery',
    zoomType: 'inner',
    lesSize: 200,
    responsive: true,
    borderSize: 1,
    cursor: 'cursor',
    galleryActiveClass: 'active',
    imageCrossfade: true
  });
});