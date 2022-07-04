/* WAVE FUNCTION COLLAPSE --------------------------------------------------

Wave Function Collapse is a concept in Quantum Mechanics that states that
a wave function reduces to a single eigenstate due to interaction with the
external world. Simply speaking, the number of possibilities reduces with
the introduction of new information. I got the inspiration for this from a
Coding Adventure The Coding Train did recently.
Check out my blog post:
        https://asanka.hashnode.dev/07-wave-function-collapse-art-from-quantum-rules
        https://asanka-sovis.blogspot.com/2022/07/07-wave-function-collapse-art-from.html
Coded by Asanka Akash Sovis

-----------------------------------------------------------------------------*/

// Defining global variables
tile[] tiles = null; // Available tile types
tile[] slots = null; // Tile slots on the canvas
int tileSize = 0; // Size of a tile
int rowCount = 40; // Number of tiles per row

void setup() {
  // Creating the canvas
  // NOTE: Only create a canvas with equal width and height
  size(600, 600);
  frameRate(1); // Lower frame rate
  
  // Setting up the list of tiles we have
  // NOTE: Can change this under setupTiles() function
  tiles = setupTiles();
  
  // The slots we have on screen for tiles. This gets popupated
  // when a new tile is drawn so that when the next tile is drawn,
  // we can check its neighbours
  slots = new tile[rowCount * rowCount];
  
  // Size of a tile is the width / number of rows we have
  tileSize = width / rowCount;
}

void draw() {
  background(0); // Setting the background to black
  
  // For x and y directions in the canvas, we iterate through the
  // slots
  for (int i = 0; i < rowCount; i++) {
    for (int j = 0; j < rowCount; j++) {
      int[] leftPossible = null; // Hold the possible tiles to the left
      int[] topPossible = null; // Hold the possible tiles to the top
      
      // If there's no left neighbour, we can place any tile
      // Otherwise we get the list of tiles the neighbour accepts
      if (i == 0) {
        leftPossible = allTiles();
      } else {
        leftPossible = slots[j * rowCount + i - 1].RIGHTT;
      }
      
      // If there's no top neighbour, we can place any tile
      // Otherwise we get the list of tiles the neighbour accepts
      if (j == 0) {
        topPossible = allTiles();
      } else {
        topPossible = slots[(j - 1) * rowCount + i].BOTTOMT;
      }
      
      // From the possible items at the top and left, we pick the common ones
      ArrayList<Integer> commonPossible = getCommons(leftPossible, topPossible);
      
      // We draw a random tile from the possoble list and add it to the
      // slot
      slots[j * rowCount + i] = tiles[commonPossible.get((int)random(commonPossible.size()))];
      slots[j * rowCount + i].draw(i * tileSize, j * tileSize, tileSize, tileSize);
    }
  }
  
  //saveFrame("Output\\Wave Function-" + str(frameCount) + ".png"); // Saves the current frame. Comment if you don't need
  //noLoop();
}

// This function returns the common items in two integer arrays
ArrayList<Integer> getCommons(int[] list1, int[] list2) {
  // ArrayList to hold common integers
  ArrayList<Integer> common = new ArrayList<Integer>();
  
  // For each item in list1, we go through the items in list2
  // and see if it is common. If so, we add it to the list and
  // break out
  for(int item1:list1) {
    for(int item2:list2) {
      if (item1 == item2) {
        common.add(item1);
        break;
      }
    }
  }
  
  // Return the common items
  return common;
}
