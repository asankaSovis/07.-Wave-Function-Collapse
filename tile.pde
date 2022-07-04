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
  
  tile tile00 = new tile(
    0, 
    loadImage("tiles/blobs/tile00.png"), 
    new int[]{1, 2, 3, 5, 6, 7, 10, 11, 12}, 
    new int[]{2, 4, 7, 10}, 
    new int[]{0, 2, 3, 4, 6, 7, 8, 11, 12}, 
    new int[]{0, 1, 2, 4, 6, 9, 10, 11, 12}
    );
  
  tile tile01 = new tile(
    0, 
    loadImage("tiles/blobs/tile01.png"), 
    new int[]{1, 2, 3, 5, 6, 7, 10, 11, 12}, 
    new int[]{0, 1, 3, 5, 6, 8, 9, 11, 12}, 
    new int[]{0, 2, 3, 4, 6, 7, 8, 11, 12}, 
    new int[]{3, 5, 7, 8}
    );
  
  tile tile02 = new tile(
    1, 
    loadImage("tiles/blobs/tile02.png"), 
    new int[]{0, 4, 8, 9}, 
    new int[]{0, 1, 3, 5, 6, 8, 9, 11, 12}, 
    new int[]{0, 2, 3, 4, 6, 7, 8, 11, 12}, 
    new int[]{0, 1, 2, 4, 6, 9, 10, 11, 12}
    );
    
  tile tile03 = new tile(
    2, 
    loadImage("tiles/blobs/tile03.png"), 
    new int[]{1, 2, 3, 5, 6, 7, 10, 11, 12}, 
    new int[]{0, 1, 3, 5, 6, 8, 9, 11, 12}, 
    new int[]{1, 5, 9, 10}, 
    new int[]{0, 1, 2, 4, 6, 9, 10, 11, 12}
    );
    
  tile tile04 = new tile(
    3, 
    loadImage("tiles/blobs/tile04.png"), 
    new int[]{0, 4, 8, 9}, 
    new int[]{2, 4, 7, 10}, 
    new int[]{0, 2, 3, 4, 6, 7, 8, 11, 12}, 
    new int[]{0, 1, 2, 4, 6, 9, 10, 11, 12}
    );
    
  tile tile05 = new tile(
    4, 
    loadImage("tiles/blobs/tile05.png"), 
    new int[]{1, 2, 3, 5, 6, 7, 10, 11, 12}, 
    new int[]{0, 1, 3, 5, 6, 8, 9, 11, 12}, 
    new int[]{1, 5, 9, 10}, 
    new int[]{3, 5, 7, 8}
    );
    
  tile tile06 = new tile(
    5, 
    loadImage("tiles/blobs/tile06.png"), 
    new int[]{1, 2, 3, 5, 6, 7, 10, 11, 12}, 
    new int[]{0, 1, 3, 5, 6, 8, 9, 11, 12}, 
    new int[]{0, 2, 3, 4, 6, 7, 8, 11, 12}, 
    new int[]{0, 1, 2, 4, 6, 9, 10, 11, 12}
    );
    
  tile tile07 = new tile(
    6, 
    loadImage("tiles/blobs/tile07.png"), 
    new int[]{0, 4, 8, 9}, 
    new int[]{0, 1, 3, 5, 6, 8, 9, 11, 12}, 
    new int[]{1, 5, 9, 10}, 
    new int[]{0, 1, 2, 4, 6, 9, 10, 11, 12}
    );
    
  tile tile08 = new tile(
    7, 
    loadImage("tiles/blobs/tile08.png"), 
    new int[]{1, 2, 3, 5, 6, 7, 10, 11, 12}, 
    new int[]{2, 4, 7, 10}, 
    new int[]{1, 5, 9, 10}, 
    new int[]{0, 1, 2, 4, 6, 9, 10, 11, 12}
    );
    
  tile tile09 = new tile(
    8, 
    loadImage("tiles/blobs/tile09.png"), 
    new int[]{1, 2, 3, 5, 6, 7, 10, 11, 12}, 
    new int[]{2, 4, 7, 10}, 
    new int[]{0, 2, 3, 4, 6, 7, 8, 11, 12}, 
    new int[]{3, 5, 7, 8}
    );
    
  tile tile10 = new tile(
    9, 
    loadImage("tiles/blobs/tile10.png"), 
    new int[]{0, 4, 8, 9}, 
    new int[]{0, 1, 3, 5, 6, 8, 9, 11, 12}, 
    new int[]{0, 2, 3, 4, 6, 7, 8, 11, 12}, 
    new int[]{3, 5, 7, 8}
    );
    
  tile tile11 = new tile(
    10, 
    loadImage("tiles/blobs/tile11.png"), 
    new int[]{1, 2, 3, 5, 6, 7, 10, 11, 12}, 
    new int[]{0, 1, 3, 5, 6, 8, 9, 11, 12}, 
    new int[]{0, 2, 3, 4, 6, 7, 8, 11, 12}, 
    new int[]{0, 1, 2, 4, 6, 9, 10, 11, 12}
    );
    
  tile tile12 = new tile(
    11, 
    loadImage("tiles/blobs/tile12.png"), 
    new int[]{1, 2, 3, 5, 6, 7, 10, 11, 12}, 
    new int[]{0, 1, 3, 5, 6, 8, 9, 11, 12}, 
    new int[]{0, 2, 3, 4, 6, 7, 8, 11, 12}, 
    new int[]{0, 1, 2, 4, 6, 9, 10, 11, 12}
    );
  
  return new tile[]{tile00, tile01, tile02, tile03, tile04, tile05, tile06, tile07, tile08, tile09, tile10, tile11, tile12};
}
