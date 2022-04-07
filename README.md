# README

## Example Response

{<br>
&nbsp;&nbsp;&nbsp;&nbsp;"id":"24uobf24jlgb",<br>
&nbsp;&nbsp;&nbsp;&nbsp;    "make":"Tesla",<br>
&nbsp;&nbsp;&nbsp;&nbsp;    "model":"X",<br>
&nbsp;&nbsp;&nbsp;&nbsp;    "range":{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"unit":"km",<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;        "distance":"450"<br>
&nbsp;&nbsp;&nbsp;&nbsp;    },<br>
&nbsp;&nbsp;&nbsp;&nbsp;    "colors":[<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;        "red",<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;        "black"<br>
&nbsp;&nbsp;&nbsp;&nbsp;    ],<br>
&nbsp;&nbsp;&nbsp;&nbsp;    "price":"110000 EUR",<br>
&nbsp;&nbsp;&nbsp;&nbsp;    "photo":"https://car.com/car.jpg"<br>
}<br>

* /cars --> get action retrieves all the cars.
* /cars --> post action create a car with given attributes. (you can see the necessary details from the example above)
* /cars/:id --> get action retrieves specified cars by the id.
* /cars/search --> get action retrieves the cars depending on the ```make``` params given and ```order``` param is ```obligatory ```

## Notes
* Right now we are just accepting the EURO values.
* You can create the car without specifiying the currency or with currency but not contiguous to price.
* No error handling applied.
* JUST CHECKED THE REPO AGAIN AND THOUGHT ADDING VALIDATION IS A GOOD IDEA SO ADDED THEM IN 07.04.2022

