#Program that enters client information for designer. 
#program will include a hash called 'client' with key/values of: client's name,
#age, # of children, decor theme, square footage, "do you have an existing design on file?"

client={
	"clients name"=> "Jane Doe",
	"sq_footage": 2500,
	"children": 0,
	"decor_theme": "rustic modern",
	"on_file": "n"
}

#Driver Code(questionairre)
puts "Please Fill out the Following:"
puts "What's your name?"
	input_name=gets.chomp
		client["clients name"]="#{input_name}"
puts "How many children do you have?"
	input_children=gets.chomp
		client[:children]=input_children.to_i
puts "What's the square footage of your home?"
	input_sf=gets.chomp
		client[:sq_footage]=input_sf.to_i
puts "How would you describe your preferred decor theme?"
	input_decor=gets.chomp
		client[:decor_theme]="#{input_decor}"
puts "Do you have a design on file with us?(Y/N)"
	input_onfile=gets.chomp
		client[:on_file]=input_onfile
p client
#if designer needs to update form, they can input a new 
#category in this section. Prints new or old form.
puts "do you need to add any questions to your client questionairre? If yes, type the new category. If complete, type'done'"
	input_add=gets.chomp
		if input_add !="done"
			client["#{input_add}".intern]=""
		    	puts "Here's your new questionairre..."
		    	  p client 
		else
	puts "ok, here's your old questionairre.."
	p client
end