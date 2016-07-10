# Pre-work - *Simple Restaurant Application*

**Simple Restaurant Application** is a Ruby on Rails blog application.

Submitted by: **Vinay Maneti**

Time spent: **24** hours spent in total

URL: **https://mighty-harbor-15575.herokuapp.com/**

## User Stories

**Required** User Stories

* [x] The User must be able to go two pages: Menu, and Contact Us.
* [x] The User can see the address and phone number on the contact us page.
* [x] The User can see a basic google map on the Contact Us page.
* [x] The User can navigate to a menu page with four sections:

* [x] Breakfast
* [x] Lunch
* [x] Dinner
* [x] Drinks
* [x] The user should see at least 5 food items in each section.

* [x] Each food item should have the following fields:

* [x] Name (Canh Chua)
* [x] Description (Delicious fish soup)
* [x] Price (VND)
* [x] Section - Breakfast, Lunch, Dinner, Drinks
* [x] Image URL - do a google search or use LoremFlickr: http://loremflickr.com/320/240/canhchua
Note: You may have to add extra fields to the MenuItem model to accomplish the bonus extra tasks.

* [x] The User should be able to filter by section of Breakfast, Lunch, Dinner, or Drinks and see only the relevant items.
* [x] The User can sort menu items by "alphabetical", "price low to high", and "price high to low".
* [x] The User can search for food by food name (or title).

* [x] Clicking on an item in the menu brings up its detail, where you see the description and a larger picture.

* [x] The User can click "order" on a menu item to go to a "Create Order" page.

* [x] The User is able to fill in their name, phone number, and address.

* [ ] The User is taken to a "Thank you for your order page" that lists the name of item, the total cost (delivery should cost 20,000 VND), the user's name, the user's address, and the time the order was created in human-readable format (for example, Tuesday, December 1, 15:25).

* [ ]Bonus User Stories

* [ ] The User can also filter by type of Cuisine.
* [x] The User can see how many times each menu item has been viewed, and sort items by "most viewed".
* [ ] The User can leave a review (1-5 stars) for each dish, along with a text review.
* [ ] The User can see reviews and an average review score.
* [ ] The user can input "CODERSCHOOL" as a coupon code on the order page, which should give a 50% discount off of the order.
* [ ] The User can order more than one dish at a time.
* [ ] The User receives an email upon placing an order.
* [ ] The Restaurant (you) receives an email or SMS when a User places an order. Try Twilio if you'd like a SMS API. Use Promo Code CodeSchool15 for $30 free credit.


## Video Walkthrough 

Here's a walkthrough of implemented user stories:

![Video Walkthrough](restaurant_app.gif)

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## License

    Copyright [yyyy] [name of copyright owner]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.