# Random-Circle-Generator

This is a matlab function to create non overlapping random circles in a square. 

To use this function, download the file in your working directory. 
Call:

	points_array = Random_Circle_generator(R, square_edge, iter_max)
	
Where:
	points_array:  is the retured array of center points of circles
	R: It is the vector of lengths of circles
	square_edge: length of edge of square
	iter_max: maximum number of tries to check non-overlaps (more is better, but takes more time)
	
For example:
~~~~
R = [1,2,3,2,2,1]
square_edge = 50
points_array = Random_Circle_generator(R, square_edge, 2000)
~~~~
