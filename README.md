# SpotifyDBDesign 🎵

<p align="center">
  <img src="Spotify-Logo.png" alt="SpotifyDBDesign" width="200">
</p>

## Introduction 📖

The purpose of this project is to design a robust and scalable database for a music streaming platform akin to Spotify. The database utilizes PostgreSQL, an open-source relational database management system known for its reliability and performance. By following the principles of effective database design, we aim to provide a solid foundation for managing user interactions, artist information, music albums, playlists, recommendations, and notifications.

## Table of Contents 📚

- [Table Design and Structure](#table-design-and-structure)
- [ER Diagram](#er-diagram)
- [Data Insertion](#data-insertion)
- [Data Retrieval Queries](#data-retrieval-queries)
- [Getting Started](#getting-started)
- [Contributing](#contributing)
- [License](#license)

## Table Design and Structure 💡

The database design consists of several tables, each serving a specific purpose within the system. The main tables include:

- **Users**: 🧑‍🤝‍🧑 Stores user information such as name, email, password, date of birth, and profile image.
- **Artists**: 🎤 Contains details about artists, including their name, genre, and image.
- **Albums**: 🎶 Manages album information, including the album name, release date, and image. It establishes a foreign key relationship with the Artists table.
- **Tracks**: 🎵 Stores track details such as the track name, duration, and file path. It establishes a foreign key relationship with the Albums table.
- **Playlists**: 🎧 Manages playlists created by users, including the playlist name and image. It establishes a foreign key relationship with the Users table.
- **Playlist_Tracks**: 🔀 Represents the association between playlists and tracks. It includes foreign keys linking to the Playlists and Tracks tables, along with an "Order" column to maintain the track order within a playlist.
- **Followers**: 👥 Stores the association between users and artists. It includes foreign keys linking to the Users and Artists tables.
- **Likes**: ❤️ Stores information about tracks liked by users, including the date and time of the like. It includes foreign keys linking to the Users and Tracks tables.

The table structures, relationships, and SQL code for creating the tables can be found in the [Database Design](https://github.com/Mobiwn/Spotify-Database-Design/tree/main/Source%20Code) file.

## ER Diagram 🗺️

Here is an ER (Entity-Relationship) diagram depicting the relationships between the tables in the SpotifyDBDesign:

<p align="center">
  <img src="Spotify%20ERD%20(PostgreSQL).png" alt="ER Diagram" width="600">
</p>

## Data Insertion 💾

To populate the tables with sample data, SQL queries for data insertion have been provided. These queries can be found in the [Data Insertion](https://github.com/Mobiwn/Spotify-Database-Design/tree/main/Source%20Code/Spotify%20Data%20Insertion%20Queries) file. Feel free to modify and expand these queries to fit your specific data requirements.

## Data Retrieval Queries 🔍

To retrieve data from the database, a set of sample queries have been included in the [Data Retrieval Queries](https://github.com/Mobiwn/Spotify-Database-Design/tree/main/Source%20Code/Data%20Retrieval%20Queries) file. These queries demonstrate how to retrieve tracks in a playlist, liked tracks by a user, and users following an artist. You can further enhance and customize these queries based on your specific needs.

## Getting Started 🚀

To get started with this project, follow these steps:

1. Clone the repository: `git clone https://github.com/Mobiwn/Spotify-Database-Design.git`
2. Set up your PostgreSQL database and connection details.
3. Run the SQL code provided in the [Database Design](https://github.com/Mobiwn/Spotify-Database-Design/tree/main/Source%20Code) file to create the necessary tables.
4. Insert sample data using the SQL code provided in the [Data Insertion](https://github.com/Mobiwn/Spotify-Database-Design/tree/main/Source%20Code/Spotify%20Data%20Insertion%20Queries) file.
5. Experiment with the data retrieval queries in the [Data Retrieval Queries](https://github.com/Mobiwn/Spotify-Database-Design/tree/main/Source%20Code/Data%20Retrieval%20Queries) file to explore the functionality of the database.

## Contributing 🤝

Contributions to this project are welcome! If you have any suggestions, improvements, or additional features to propose, please feel free to open an issue or submit a pull request. Let's collaborate and make this database design even better!

## License 📄

This project is licensed under the [MIT License](LICENSE). Feel free to use, modify, and distribute the code as per the terms of the license.
