-- Create a view of players that have ALL (pts, fgm, ast, reb) metrics in the top 50 ranks
CREATE VIEW top_50_rankings AS
WITH player_rankings AS (
    SELECT player_name, pts, fgm, ast, reb, team_id, gp,
           ROW_NUMBER() OVER (ORDER BY pts DESC) AS pts_rank,
           ROW_NUMBER() OVER (ORDER BY fgm DESC) AS fgm_rank,
           ROW_NUMBER() OVER (ORDER BY ast DESC) AS ast_rank,
           ROW_NUMBER() OVER (ORDER BY reb DESC) AS reb_rank
    FROM players AS p
),
team_name AS (
    SELECT team_abbrev, team_id
    FROM teams
)
SELECT t.team_abbrev, p.player_name, p.pts, p.fgm, p.ast, p.reb, p.pts_rank, p.fgm_rank, p.ast_rank, p.reb_rank
FROM player_rankings AS p
    JOIN team_name AS t ON p.team_id = t.team_id
WHERE p.pts_rank < 50
    AND p.fgm_rank < 50
    AND p.ast_rank < 50
    AND p.reb_rank < 50;
