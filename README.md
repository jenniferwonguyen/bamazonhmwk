# bamazonhmwk

Overview
This is an Amazon-like storefront with a MySQL database. The app will take in orders from customers and deplete stock from the store's inventory using MySQL and Node

You will also need to run ```npm install``` to get the right packages from the package.json.

### Initial Screen
This screen shows the Bamazon Product Listing, showing the itemid, product name, department name, item price and stock quantity.
![nodeintialize](https://user-images.githubusercontent.com/46514256/53618047-5f8e7d00-3baf-11e9-983a-2d0921c6056f.png)

### Prompt Screen 
This screen prompts customer for item to order and how many by asking two questions.
![promptquestions](https://user-images.githubusercontent.com/46514256/53618104-995f8380-3baf-11e9-80cb-650a95d8bd48.png)

### Inventory
This screen shows an update of the inventory after selecting the item and quantity the customer needs.
![updateinventory](https://user-images.githubusercontent.com/46514256/53618432-e2640780-3bb0-11e9-9b30-9ba959f13654.png)

The MySQL workbench will also reflect the updated changes after a purchase has been made. (Example: 50 were in stock. 5 were purchase. Now 45 left in inventory.
![updategrid](https://user-images.githubusercontent.com/46514256/53618561-759d3d00-3bb1-11e9-99d5-32c1b40a6650.png)


### Error 
This screen shows a error message, "Insufficient funds!" when customer tries to purchase more than what's in inventory.
![insufficientfunds](https://user-images.githubusercontent.com/46514256/53618469-0d4e5b80-3bb1-11e9-97e6-1ccefc44297a.png)













### Stack Used
        * Node Packages
            * Inquirer
            * MySQL
        * MySQL database     
       
            
