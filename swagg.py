import recommendation
def mov():
	print("\n\nEnter Genre\n\n(1)Action\n(2)Fanatsy\n(3)Horror\n(4)Comedy\n(5)Animated\n(6)Drama\n(8)Quit")
	choose=input(">>> ")
	choice=choose.lower()
	while choice!="8":
	    if choice=="1":
	        print("Action")
	    elif choice=="2":
	    	print("Fanatsy")   
	    elif choice=="3":
	        print("Horror")
	   	elif choice=="4":
	    	print("Comedy")
	    elif choice=="5":
	       	print("Animated")
	    elif choice=="6":
	    	print("Drama")
	   	else:
	    	print("Invalid choice, please choose again")
	    	print("\n")
			print("Visit again,",name,end="")
			print(".") 

def recomm();
	print("enter the movie name or Genre")

def main ():
	print ("\n\n*********************************Welcome to the Movie Recommender System******************************************\n")
	print("\nMenu\n\n(1)Movies\n(2)Enter movies in database\n(3)Recommendation\n(4)Quit")
	choose=input(">>> ")
	choice=choose.lower()
	while choice!="4":
	    if choice=="1":
	        mov()
	        main()
	    elif choice=="2":
	        emid()
	        main()
	    elif choice=="3":
	        reccom()
	        main()
	    else:
	        print("Invalid choice, please choose again")
	        print("\n")
			print("Visit again,",name,end="")
			print(".")

main()	

	       

