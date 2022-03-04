extends Node2D

class_name ChessPiece

enum Team {
	WHITE,
	BLACK
}

enum Type {
	KING,   # 100
	QUEEN,  # 9
	ROOK,   # 5
	BISHOP, # 3
	KNIGHT, # 3
	PAWN,   # 1
	NULL
}

export(Team) var team = Team.WHITE
export(Type) var type = Type.PAWN
export(int) var value = 1

var pos
var selected = false

func _ready():
	pass
	#Input.set_mouse_mode(Input.MOUSE_MODE_CONFINED)

func move():
	pass

func get_available_moves():
	
	var availableMoves = []
	
	match self.type:
		Type.PAWN:
			pass
		Type.KNIGHT:
			pass
		Type.BISHOP:
			pass
		Type.ROOK:
			pass
		Type.QUEEN:
			pass
		Type.KING:
			pass
	
	return availableMoves
	
func _physics_process(delta):
	if selected:
		var newPosition = get_global_mouse_position()
		var movement = newPosition - position
		
		global_position = get_viewport().get_mouse_position()
		
