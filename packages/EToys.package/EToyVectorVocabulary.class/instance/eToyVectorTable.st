initialization
eToyVectorTable
	"Answer a table of specifications to send to #addFromTable: which add the 'players are vectors' extension to the etoy vocabulary."

	"(selector setterOrNil ((arg name  arg type)...) resultType (category ...) 'help msg' 'wording' autoUpdate)"

	^ #(

(+ nil ((aVector  Player)) Player (geometry) 'Adds two players together, treating each as a vector from the origin.')
(- nil ((aVector  Player)) Player (geometry) 'Subtracts one player from another, treating each as a vector from the origin.')
(* nil ((aVector  Number)) Player (geometry) 'Multiply a player by a number, treating the Player as a vector from the origin.')
(/ nil ((aVector  Number)) Player (geometry) 'Divide a player by a Number, treating the Player as a vector from the origin.')

(incr: nil ((aVector  Player)) unknown (geometry) 'Each Player is a vector from the origin.  Increase one by the amount of the other.' 'increase by')
(decr: nil ((aVector  Player)) unknown (geometry) 'Each Player is a vector from the origin.  Decrease one by the amount of the other.' 'decrease by')
(multBy: nil ((factor  Number)) unknown (geometry) 'A Player is a vector from the origin.  Multiply its length by the factor.' 'multiplied by')
(dividedBy: nil ((factor  Number)) unknown (geometry) 'A Player is a vector from the origin.  Divide its length by the factor.' 'divided by')

"distance and theta are already in Player.  See additionsToViewerCategoryGeometry"
).