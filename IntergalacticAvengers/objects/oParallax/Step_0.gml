/// @description Insert description here
// You can write your code in this editor

var  cloudFront = layer_get_id("Cloud_Front");
var  rocksFront = layer_get_id("Rocks_Front");
var  rocksMid = layer_get_id("Rocks_Mid");
var  rocksBack = layer_get_id("Rocks_Back");
var  moon = layer_get_id("Moon");
var  cloudMid = layer_get_id("Cloud_Mid");
var  cloudBack = layer_get_id("Cloud_Back");

layer_x(cloudFront, lerp(0, camera_get_view_x(view_camera[0]), 0.7)	);
layer_x(rocksFront, lerp(0, camera_get_view_x(view_camera[0]), 0.6)	);
layer_x(rocksMid, lerp(0, camera_get_view_x(view_camera[0]), 0.5)	);
layer_x(rocksBack, lerp(0, camera_get_view_x(view_camera[0]), 0.4)	);
layer_x(moon, lerp(0, camera_get_view_x(view_camera[0]), 0.3)	);
layer_x(cloudMid, lerp(0, camera_get_view_x(view_camera[0]), 0.6)	);
layer_x(cloudBack, lerp(0, camera_get_view_x(view_camera[0]), 0.5)	);
