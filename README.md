### NBA Traditional Stats Project
This project analyses NBA player statistics using SQL and Python. It uses nba_api to retrieve NBA Traditional stats for all players and teams for the 2024-25 regular season and loads them into a database. A SQL virtual table is created with all players that have a top 50 ranking in the following metrics: avg pts, avg_fgm, avg_ast, avg_reb. Finally, a simple pandas chart is created to visualise these results.

The steps below guide you through the execution process.

# SQL database
1. `create_nba_traditional_db.sql`
    - Run this sql script to create the database with teams and players tables and appropriate foreign keys
# Code Editor
2. `get_nba_data.ipynb`
    - This file (jupyter notebook) retrieves data from nba_api and loads into JSON files for further use. Traditional stats for teams and players
    - NOTE: This process takes about 30 minutes to retrieve stats for each individual player
    - The api call 'PlayerDashboardByGeneralSplits()' only searches one player at a time
3. `load_to_db.ipynb`
    - This file (jupyter notebook) collects the data from JSON files and loads them into the database
# SQL Database
4. `top_50_rank_views.sql`
    - SQL script to create a view for players with a top 50 ranking in the 4 metrics mentioned above
# Code Editor
5. `analyse_ranking.ipynb`
    - Script (jupyter notebook) to create a simple line graph to visualise the SQL virtual table (view)


## Database design
- This project includes a MySQL Workbench model `nba_traditional_model.mwb ` which can be used to visualise or modify the database schema