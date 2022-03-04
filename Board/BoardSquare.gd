extends Node2D

var piece
var mouse_over = false

func _ready():
	if get_child_count() < 2:
		piece = null
	else:
		piece = get_child(1)

func attach_piece(var piece):
	self.piece = piece
	add_child(piece)
	piece.global_position = global_position
	
func detach_piece():
	self.piece = null
	remove_child(piece)

func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		print(self)
		if piece == null:
			if ChessState.selectedPiece != null:
				attach_piece(ChessState.selectedPiece)
				piece.selected = false
				ChessState.selectedPiece = null
		else:
			if ChessState.selectedPiece != null:
				pass
			else:
				ChessState.selectedPiece = piece
				piece.selected = true
				detach_piece()
