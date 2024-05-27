// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CreatePetroleum(){
	randomize();
	for (i = 0; i < room_height; i++){
		for (ii = 0; i < room_width, ii++) {
			var random = random_range(1,6);
			if (random == 5) {
				var PetrolX = floor(i/32)*32;
				var PetrolY = floor(ii/32)*32;
			}
		}
		
		
	}
}