// Functions related to an individual tile

// Class that defines what a tile is
class tile {
  int ID = 0; // ID of the tile
  PImage ICON = null; // Display icon
  int[] TOPT =  null; // Possible top tile IDs
  int[] BOTTOMT =  null; // Possible bottom tile  IDs
  int[] LEFTT =  null; // Possible left tile IDs
  int[] RIGHTT =  null; // Possible right tile IDs

  // Initializer
  tile(int _ID, PImage _ICON, int[] _TOPT, int[] _BOTTOMT, int[] _LEFTT, int[] _RIGHTT) {
    ID = _ID;
    ICON = _ICON;
    TOPT = _TOPT;
    BOTTOMT = _BOTTOMT;
    LEFTT = _LEFTT;
    RIGHTT = _RIGHTT;
  }
  
  // Draws the tile on canvas
  void draw(int x, int y, int w, int h) {
    image(ICON, x, y, w, h);
  }
}

// Below this, we will define what our tiles are. The example set
// I used for this example contains 5 tiles: Blank, Top, Bottom,
// Left, Right. Each of these tile types will get an ID
// If we were to add a new tile set, we must change the tile IDs
// returned by allTiles() function and the tiles we create under
// setupTiles() function along with the rules (neighbouring tiles
// allowed) for each tile.

// Returns all the tile IDs available
int[] allTiles() {
  return new int[]{0, 1, 2, 3, 4};
}

// Setting up all the tiles we have. For each tile we create a
// new tile instance with a suitable ID, icon image and neighbours
tile[] setupTiles() {
  // Blank tile
  tile blankTile = new tile(
    0, 
    loadImage("tiles/demo/blank.png"), 
    new int[]{0, 4}, 
    new int[]{0, 1}, 
    new int[]{0, 2}, 
    new int[]{0, 3}
    );
  
  // Down tile
  tile downTile = new tile(
    1, 
    loadImage("tiles/demo/down.png"), 
    new int[]{0, 4}, 
    new int[]{2, 3, 4}, 
    new int[]{1, 3, 4}, 
    new int[]{1, 2, 4}
    );
  
  // Top tile
  tile leftTile = new tile(
    2, 
    loadImage("tiles/demo/left.png"), 
    new int[]{1, 2, 3}, 
    new int[]{2, 3, 4}, 
    new int[]{1, 3, 4}, 
    new int[]{0, 3}
    );
  
  // Right tile
  tile rightTile = new tile(
    3, 
    loadImage("tiles/demo/right.png"), 
    new int[]{1, 2, 3}, 
    new int[]{2, 3, 4}, 
    new int[]{0, 2}, 
    new int[]{1, 2 ,4}
    );
  
  // Up tile
  tile upTile = new tile(
    4, 
    loadImage("tiles/demo/up.png"), 
    new int[]{1, 2, 3}, 
    new int[]{0, 1}, 
    new int[]{1, 3, 4}, 
    new int[]{1, 2, 4}
    );
  
  return new tile[]{blankTile, downTile, leftTile, rightTile, upTile};
}
