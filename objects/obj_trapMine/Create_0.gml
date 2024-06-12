explosion = false;
mineFlag = false

function TriggerNeighbor() {
	pos = [[32,0],[-32,0],[0,32],[0,-32]];
	for (i=0; i < array_length(pos); i++) {
			var _id = instance_place(x+pos[i,0], y + pos[i,1], obj_trapMine);
			if (_id != noone) {
				_id.mineFlag = true;	
			}
	}
}