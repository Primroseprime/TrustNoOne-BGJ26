extends AnimatedSprite2D

func _ready() -> void:
	$"Note 1".text = " "
	$"Note 2".text = " "
	$"Note 3".text = ""

func Add_Note():
	self.frame += 1
	
	if self.frame == 1:
		$"Note 1".text = "They may 
give wrong 
awnsers
to your
questions."
	
	elif self.frame == 2:
		$"Note 2".text = "They're asnwers
may change 
after repeated 
questions."
	
	elif self.frame == 3:
		$"Note 3".text = "They seem to
sometimes make
weird movements.
Maybe adjusting
to their new skin."
