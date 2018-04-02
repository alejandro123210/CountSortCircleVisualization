# Count Sort Circle Visualization
This is a animated representation of count sort using circles. If you have to sort an array of integers, you can make them radiuses for opaque circles that are centered on the screen. This means that once the circles are created, the array will appear to already be sorted, with varying opacity levels meaning that there are multiple ocurrences of a certain integer, for example, the 4th circle represents the number 4 and it is significantly brighter than the other circles due to the number of ocurrences of 4 in the array. There is then a white line that goes from the center out, this represents the actual counting part of the algorithm, as it passes a circle, you can imagine it checking the number of ocurrences using the opacity of the circle it's passing, and knowing the value due to its radius.    

![Alt Text](https://media.giphy.com/media/wIVBtnZfxCAdwH0XPN/giphy.gif)


# Count Sort Graph Visualization
This is an alternate representation of count sort using a graph style animation. The integers are converted into columns of different heights representing the integers. A bar comes down from the top and moves the first thing it touches to the other end of the view, as it goes down to the bottom, the views become sorted! 

![Alt Text](https://media.giphy.com/media/4QFqHZol4b1yGwti6A/giphy.gif)
