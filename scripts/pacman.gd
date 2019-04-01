extends AnimatedSprite
#variavel da posicao discreta em relação ao tilemap
var dest_dist
var pos_dist
#variavel de posição em relação ao node board
var dest_cont
#variavel de direção dentro do board no tilemap
var dir
var speed
func _ready():
	spawn()
	pass
#funcao para criar o pacman no tabuleiro
func spawn():
	#seta a posição inicial
	pos_dist = Vector2(9,23)
	#seta a posiçao continua, que a pos_disc * o tamanho dos tile_sets e
	#soma com a coordenda em relaçao o centro da imagem com o x e y 
	set_pos(pos_dist * 32 + Vector2(16,16))
	#seta a direção que sera zero, que se for direta 1 e esquerda -1 no x
	dir = Vector2(0,0)
	#seta o destino dist que sera o mesmo no momento que a pos
	dest_dist = pos_dist
	#seta a destino continuo no momento e o mesmo que a posiçao inicial setada
	dest_cont = get_pos()
	
	speed = 150
	
	pass 