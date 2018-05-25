-----------------------------------------------------------------------------------------
-- Created by: Chris Asante
-- Created on: March 2017
--
-- this program calculates the total for the selected pizza 
-----------------------------------------------------------------------------------------

local TitleOfTheShopTextField = display.newText( "Pizza", display.contentCenterX - 00, display.contentCenterY - 600, native.systemFont, 100 )
TitleOfTheShopTextField:setFillColor( 99, 10, 88 )

local InchesTextField = display.newText( "Size of pizza?", display.contentCenterX - 200, display.contentCenterY - 300, native.systemFont, 85 )
InchesTextField:setFillColor( 400, 100, 100 )

local DiameterOfPizzaTextField = native.newTextField( display.contentCenterX - 500, display.contentCenterY - 100, 750, 140 )
DiameterOfPizzaTextField.id = "diameter textField"

local SubtotalTextField = display.newText( "Subtotal", display.contentCenterX - 650, display.contentCenterY + 400, native.systemFont, 100 )
SubtotalTextField.id = "subtotal textfield"
SubtotalTextField:setFillColor( 1, 1, 1 )

local TotalTextField = display.newText( "Total", display.contentCenterX + 700, display.contentCenterY + 400, native.systemFont, 100 )
TotalTextField.id = "total textfield"
TotalTextField:setFillColor( 1, 1, 1 )

local TaxTextField = display.newText( "Tax", display.contentCenterX + 50, display.contentCenterY + 400, native.systemFont, 100 )
TaxTextField.id = "tax textfield"
TaxTextField:setFillColor( 1, 1, 1 )

local calculateButton = display.newImageRect( "./assets/sprites/enterButton.png", 706, 157 )
calculateButton.x = display.contentCenterX +700
calculateButton.y = display.contentCenterY -100
calculateButton.id = "calculate button"

local function calculateButtonTouch( event )

    local DiameterOfPizza
	local Tax 
	local Subtotal
	local Total

    DiameterOfPizza = DiameterOfPizzaTextField.text
    Tax = TaxTextField.text
    Subtotal = SubtotalTextField.text
    Total = TotalTextField.text
    Subtotal = 0.75 + 1.00 + (DiameterOfPizza * 0.5)
    Tax = Subtotal * 0.13
    Total = Subtotal + Tax
   SubtotalTextField.text = "Subtotal: " .. Subtotal.."$"
   TaxTextField.text = "Tax:" .. Tax .."$"
   TotalTextField.text = "Total:" ..Total.."$"

    return true

end


calculateButton:addEventListener( "touch", calculateButtonTouch )