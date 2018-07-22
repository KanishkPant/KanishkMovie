import pymysql
from tabulate import tabulate

def show(movie_data):
	table = [['A','B'],[1,2]]
	print(tabulate(table))
	table = [['MOVIE ID','MOVIE NAME','IMDB RATING','USER RATING']].append(list(movie_data))
	print(tabulate(table))

def get_recommendation(tag_database, movie_id):
	database = pymysql.connect('localhost','root','','recommendation')
	cur = database.cursor()
	query = "SELECT M.M_ID, M.M_NAME, M.M_IMDB, M.M_RATING FROM MOVIES M, (SELECT M_ID FROM " + tag_database + " WHERE M_ID <> " + str(movie_id) + ") G WHERE M.M_ID = G.M_ID ORDER BY M.M_IMDB DESC"
	cur.execute(query)
	result = cur.fetchone()
	cur.close()
	database.close()
	return result

def get_movies(movie):
	movie = movie.upper()
	database = pymysql.connect('localhost','root','','recommendation')
	cur = database.cursor()
	query = "SELECT * FROM MOVIES WHERE UPPER(M_NAME) LIKE \'%" + movie +"%\'"
	cur.execute(query)
	result = cur.fetchall()
	for movies in result:
		show(movies)
		movie_id = movies[0]
		if cur.execute("SELECT M_ID FROM G_ACTION WHERE M_ID = " + str(movie_id)):
			print('Action Movie')
			recommendation = get_recommendation('G_ACTION',movie_id)
			print(rec)
			show(recommendation)
		if cur.execute("SELECT M_ID FROM G_FANTASY WHERE M_ID = " + str(movie_id)):
			print('Fantasy Movie')
			recommendation = get_recommendation('G_FANTASY',movie_id)
			print(rec)
			show(recommendation)
		if cur.execute("SELECT M_ID FROM G_HORROR WHERE M_ID = " + str(movie_id)):
			print('Horror Movie')
			recommendation = get_recommendation('G_ACG_HORRORTION',movie_id)
			print(rec)
			show(recommendation)
		if cur.execute("SELECT M_ID FROM G_COMEDY WHERE M_ID = " + str(movie_id)):
			print('Comedy Movie')
			recommendation = get_recommendation('G_COMEDY',movie_id)
			print(rec)
			show(recommendation)
		if cur.execute("SELECT M_ID FROM G_ANIMATED WHERE M_ID = " + str(movie_id)):
			print('Animated Movie')
			recommendation = get_recommendation('G_ANIMATED',movie_id)
			print(rec)
			show(recommendation)
		if cur.execute("SELECT M_ID FROM G_DRAMA WHERE M_ID = " + str(movie_id)):
			print('Drama Movie')
			recommendation = get_recommendation('G_DRAMA',movie_id)
			print(rec)
			show(recommendation)
	cur.close()
	database.close()

movie = input()
get_movies(movie)