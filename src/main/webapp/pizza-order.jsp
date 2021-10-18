<%--
  Created by IntelliJ IDEA.
  User: anthonyvillegas
  Date: 10/18/21
  Time: 10:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pizza-Order</title>
</head>
<body>
<form method="post" name="forms"
      action="">
    <div class="forms">
        <div class="cell1">
            <h3>Anthony's <br />Pizza</h3>
            <hr />
        </div>
        <div class="forms2">
            <fieldset>
                <legend>Personal Information</legend>
                Name <input name="name" /><br />
                Delivery Address <input type="text" name="address" /><br />
                Phone No. <input type="tel" name="phone" /><br />
            </fieldset>
            <fieldset>
                <legend>Pizza size &amp; Crust</legend>
                <select name="size" size="2">
                    <option>Select Pizza Size</option>
                    <option value="sm">Small</option>
                    <option value="med">Medium</option>
                    <option value="lg">Large</option>
                    <option value="xl">X-Large</option>
                </select>
                <select name="crust" size="2">
                    <option value="regular crust">Regular Crust</option>
                    <option value="thin crust">Thin Crust</option>
                </select>
            </fieldset>
            <fieldset>
                <legend>Cheeses</legend>
                <input type="radio" name="cheese" value="mozzarella chz" />Mozzarella
                <input type="radio" name="cheese" value="red. fat chz" />Reduced Fat
                <input type="radio" name="cheese" value="feta chz" />Feta
            </fieldset>
            <fieldset>
                <legend>Sauces</legend>
                <input type="radio" name="sauce" value="pizza sauce" />Pizza Sauce
                <input type="radio" name="sauce" value="bbq sauce" />BBQ Sauce
                <input type="radio" name="sauce" value="garlic sauce" />Garlic Sauce
            </fieldset>
            <fieldset>
                <legend>Special Instructions</legend>
                <textarea name="instructions" rows="3" cols="42"></textarea>
            </fieldset>
            <input type="submit" value="PLACE YOUR ORDER" />
            <input type="reset" value="START OVER" />
        </div>
        <div class="forms2">
            <fieldset>
                <legend>Choose Toppings - $1.79 Each</legend>
                <div class="forms2">
                    <input type="checkbox" name="topping" value="anchovies" /> Anchovies<br />
                    <input type="checkbox" name="topping" value="bacon" /> Bacon<br />
                    <input type="checkbox" name="topping" value="ham" /> Ham<br />
                    <input type="checkbox" name="topping" value="pepperoni" /> Pepperoni<br />
                    <input type="checkbox" name="topping" value="salami" /> Salami<br />
                    <input type="checkbox" name="topping" value="sausage" /> Sausage<br />
                </div>
                <div class="forms2">
                    <input type="checkbox" name="topping" value="pineapple" /> Pineapple<br />
                    <input type="checkbox" name="topping" value="green olives" /> Green Olives<br />
                    <input type="checkbox" name="topping" value="grn peppers" /> Green Peppers<br />
                    <input type="checkbox" name="topping" value="mushrooms" /> Mushrooms<br />
                    <input type="checkbox" name="topping" value="red onions" /> Red Onions<br />
                    <input type="checkbox" name="topping" value="roasted garlic" /> Roasted Garlic<br />
                </div>
            </fieldset>
        </div>
    </div>
</form>
</body>
</html>
