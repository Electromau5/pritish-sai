$(function() {
  return $('.zoom').elevateZoom({
    zoomType: 'inner',
    lesSize: 200,
    responsive: true,
    borderSize: 1,
    cursor: 'crosshair',
  });
});