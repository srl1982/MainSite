<cfoutput>
	
	<!DOCTYPE html>
	<html lang="en">
	<head>
	    <meta charset="UTF-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <title>Document</title>
	</head>
	<body>
		<!--- Form 1 select--->
		<h2>Select</h2>
		<form method="post">
			<label for="cars">Choose a car:</label>
			<select id="cars" name="cars" multiple>
			<!--- To show more than one selection --->
			<!--- <select id="cars" name="cars" size="2"> --->
					<option value="Mitsubishi">Mitsubishi</option>
					<option value="BMW">BMW</option>
					<option value="Honda" >Honda</option>
					<input type="submit">
			</select>
		</form>

		<!--- Form 2 Text area--->
		<form method="post">
			<textarea name="message" rows="10" cols="30">
				The cat was playing in the garden!!!!
			</textarea><br>
			<input type="submit">
		</form>	
				<cfif parameterExists(form.cars)><cfdump var="#form#"></cfif>

		<!--- Form 3 Fieldset--->
		<form method="post">
			<fieldset style="width: 200px;">
				<legend>First Name:</legend>
				<input type="text" name="fName">
			</fieldset>
			<fieldset style="width:200px">
				<legend >Last Name:</legend>
				<input type="text" name="lName">
			</fieldset>			
			<input type="submit" name="fieldSetSub">
		</form>				
		<cfif parameterExists(form.fieldSetSub)>
			<p>Hello, #form.fName# #form.lName#</p>
		</cfif>

		<button type="button" onclick="alert('Hello world')">Click me!</button><br><br>

		<!--- Form 4 Datalist --->
		<form method="post">
			<input list="browsers" name="browsers">
			<datalist id="browsers">
				<option value="Edge">
				<option value="Firefox">
				<option value="Chrome">
				<option value="Opera">
				<option value="Safari">
			</datalist>
			<input type="submit">
		</form>

		<!--- Form 5 Output Element --->
		<form method="post" oninput="x.value=parseInt(a.value)+parseInt(b.value)">
			0
			<input type="range" id="a" name="a" value="50">
			100 + 
			<input type="number" id="b" name="b" value="50"> 
			= 
			<output name="x" for="a b"></output>
			<br><br>
			<input type="submit">
		</form>

		<cfif parameterExists(form.x)>X = #form.x#</cfif>

		<!--- Form 6 Checkboxes --->
		<form method="post">
			<input type="checkbox" id="vehicle1" name="vehicle1" value="Bike"><label for="vehicle1">Bike</label><br>
			<input  type="checkbox" id="vehicle2" name="vehicle2" value="Car"><label for="vehicle2">Car</label><br>
			<input  type="checkbox" id="vehicle3" name="vehicle3" value="Boat"><label for="vehicle3">Boat</label><br>
			<input  type="submit"><input type="reset">
		</form>

		<!--- Form 7 Colors --->
		<form method="post">
			<p>This never submits a value</p>
			<label for="favcolor">Select your favorite color:</label>
			<input type="color" id="favcolor" name="favcolor" value="##ffffff"><br>
			<input type="submit">
		</form>

		<!--- Form 8 Date --->
		<form method="post">
			<label for="birthday">Birthday:</label>
			<input type="date" id="birthday" name="birthday" min="1982-07-15" max="2024-09-11">
			<input type="submit">
		</form>

		<!--- Form 9 Date/Time --->
		<form method="post">
			<label for="birthdayTime">Birthday (date and time):</label>
			<input type="datetime-local" id="birthdaytime" name="birthdayTime">
			<input type="submit">
		</form>

		<!--- Form 10 Email --->
		<form method="post">
			<label for="email">Enter your email:</label>
			<input type="email" id="email" name="emailBox"><input type="submit">
		</form>
		<cfdump var="#form#">
	</body>

</cfoutput>
