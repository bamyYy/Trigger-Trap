// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CreatePetroleum(){
	var rndm = 2;
	for (i = 0; i<room_width; i+=32) {
		if (rndm == 2) {
			instance_create_layer(i, 0, "Petroleum", obj_petroleum);
		}
	}
}