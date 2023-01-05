CREATE TABLE IF NOT EXISTS decks (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    name TEXT NOT NULL,
    description TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS cards (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    front TEXT NOT NULL,
    back TEXT NOT NULL,
    deck_id INTEGER NOT NULL,
    FOREIGN KEY (deck_id) REFERENCES decks(id)
);

INSERT INTO decks
    (id, name, description)
    VALUES (
        "1",
        "Rendering in React",
        "React's component structure allows for quickly building a complex web application that relies on DOM manipulation. "
    ),
        (
        "2",
        "React Router",
        "React Router is a collection of navigational components that compose declaratively with your application. "
        ),
        (
        "3",
        "Testing",
        "Testing is an important part of any application. React makes it easy to test your application. "
        );


INSERT INTO cards
    (id, front, back, deck_id)
    VALUES 
    (
      "1",
      "Differentiate between Real DOM and Virtual DOM.",
      "Virtual DOM updates are faster but do not directly update the HTML",
      "1"
    ),
    (
      "2",
      "How do you modify the state of a different React component?",
      "Not at all! State is visible to the component only.",
      "1"
    ),
    (
      "3",
      "How do you pass data 'down' to a React child component?",
      "As properties or props",
      "1"
    ),
    (
      "4",
      "What path will match the follow Route?\n<Route>\n  <NotFound />\n</Route>",
      "All paths. A route with no path matches all URL's",
      "2"
    ),
    (
      "5",
      "What does <Switch> do?",
      "Renders the first matching child <Route> ",
      "2"
    );

    
