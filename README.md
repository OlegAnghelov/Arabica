# Arabica
Sample project that highlights some issues with RTL in iOS9.

## How to use?

Run the project by editing the scheme, and changing the Application Language 
to Arabic and English consecutively.

### Horizontal collection view

The collection view, despite correctly showing the order of the cells, 
doesn't respect the direction on the content swipping.


### UIButton title UIEdgeInsets.

The use case is simple: the client requires the image to be more distant from the title. 
The only correct way by achieving the effect is using UIEdgeInsets. The arabic doesn't make proper math on
it, therefore UI bugs appear.

