

MATCH (n) 
WHERE has(n.email) RETURN DISTINCT "node" as element, n.email AS email LIMIT 500 UNION ALL MATCH ()-[r]-() WHERE has(r.email) 
RETURN DISTINCT "relationship" AS element, r.email AS email LIMIT 25;