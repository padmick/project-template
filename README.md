# Irish Constituencies Neo4j Database
###### Padraic Wade, G00314523

## Introduction
A database for the neo4j project using the community edition to sort and catagorise the canditates for the irish general election.

## Database
My data was collected from a online database hosted by storyful, the link is in the refernece. The data was then cleaned, sorted and uploaded to neo4j but sadly errors still remained.

## Queries
Summarise your three queries here.
Then explain them one by one in the following sections.

#### Counting genders and sorting errors
This query retreives the number of each gender and shows that the storyful database has some errors.
```cypher
MATCH (n)
RETURN n.gender, COUNT(*)
```

#### count amounts in earch party
This query retreives the amount pf people in each party
```cypher
MATCH (n)
RETURN n.party_name, COUNT(*)
```

#### List email addresses
This query retreives the email addresses of the canditates
```cypher
MATCH (n) WHERE has(n.email) RETURN DISTINCT "node" as element, n.email AS email LIMIT 500 UNION ALL MATCH ()-[r]-() WHERE has(r.email) RETURN DISTINCT "relationship" AS element, r.email AS email LIMIT 25
```

## References
1. [Neo4J website](http://neo4j.com/), the website of the Neo4j database.
2. https://github.com/storyful/irish-elections the storyfuls database of candidates from the election (csv file contained in github)
