#
#   Set slot to item
#   
#   Purpose: To /item macro an item into a slot
#
#   Input: {slot:string,item:string}
#


#$say $(slot)
#$say $(item)

$item replace entity @s armor.$(slot) with $(item)

