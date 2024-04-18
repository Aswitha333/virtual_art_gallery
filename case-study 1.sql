create database virtual_art_gallery;
use virtual_art_gallery;
CREATE TABLE Artwork (
    ArtworkID int primary key,
    ArtistID int,
    FOREIGN KEY(ArtistID) references Artist(ArtistID),
    Title VARCHAR(255),
    Description TEXT,
    CreationDate DATE,
    Medium VARCHAR(100),
    ImageURL VARCHAR(255)
);

INSERT INTO Artwork (ArtworkID, ArtistID, Title, Description, CreationDate, Medium, ImageURL)
VALUES
(1, 101, 'Mona Lisa', 'Portrait painting', '1503-07-15', 'Oil on poplar panel', 'monalisa.jpg'),
(2, 102, 'Starry Night', 'Landscape painting', '1889-06-18', 'Oil on canvas', 'starrynight.jpg'),
(3, 103, 'Les Demoiselles d''Avignon', 'Cubist painting', '1907-07-05', 'Oil on canvas', 'lesdemoiselles.jpg'),
(4, 104, 'Water Lilies', 'Series of paintings', '1916-06-01', 'Oil on canvas', 'waterlilies.jpg'),
(5, 105, 'Jimson Weed/White Flower No. 1', 'Floral painting', '1932-01-01', 'Oil on canvas', 'jimsonweed.jpg'),
(6, 106, 'The Persistence of Memory', 'Surrealist painting', '1931-01-01', 'Oil on canvas', 'persistenceofmemory.jpg'),
(7, 107, 'The Two Fridas', 'Surrealist painting', '1939-01-01', 'Oil on canvas', 'twofridas.jpg'),
(8, 108, 'David', 'Marble sculpture', '1501-01-01', 'Marble', 'david.jpg'),
(9, 109, 'The Night Watch', 'Group portrait', '1642-01-01', 'Oil on canvas', 'nightwatch.jpg'),
(10, 110, 'The Scream', 'Expressionist painting', '1893-01-01', 'Oil, tempera, pastel on cardboard', 'thescream.jpg');


CREATE TABLE Artist (
    ArtistID INT PRIMARY KEY,
    Name VARCHAR(255),
    Biography TEXT,
    BirthDate DATE,
    Nationality VARCHAR(100),
    Website VARCHAR(255),
    ContactInformation VARCHAR(255)
);

INSERT INTO Artist (ArtistID, Name, Biography, BirthDate, Nationality, Website, ContactInformation)
VALUES
(101, 'Leonardo da Vinci', 'Renaissance polymath', '1452-04-15', 'Italian', 'http://www.leonardodavinci.net/', '8754569821'),
(102, 'Vincent van Gogh', 'Post-Impressionist painter', '1853-03-30', 'Dutch', 'http://www.vangoghgallery.com/', '7895423658'),
(103, 'Pablo Picasso', 'Cubist artist', '1881-10-25', 'Spanish', 'http://www.picasso.fr/', '9687456215'),
(104, 'Claude Monet', 'Impressionist painter', '1840-11-14', 'French', 'http://www.claudemonetgallery.org/', '8695472365'),
(105, 'Georgia O''Keeffe', 'Modernist artist', '1887-11-15', 'American', 'http://www.okeeffemuseum.org/', '6359874598'),
(106, 'Salvador Dalí', 'Surrealist artist', '1904-05-11', 'Spanish', 'http://www.salvadordalimuseum.org/', '7589641598'),
(107, 'Frida Kahlo', 'Surrealist painter', '1907-07-06', 'Mexican', 'http://www.fridakahlo.org/', '7986548936'),
(108, 'Michelangelo Buonarroti', 'Renaissance artist', '1475-03-06', 'Italian', 'http://www.michelangelo.com/', '8698745963'),
(109, 'Rembrandt van Rijn', 'Baroque artist', '1606-07-15', 'Dutch', 'http://www.rembrandtpainting.net/', '7986541856'),
(110, 'Edvard Munch', 'Expressionist artist', '1863-12-12', 'Norwegian', 'http://www.edvardmunch.org/', '9485698725');


CREATE TABLE User (
    UserID INT PRIMARY KEY,
    Username VARCHAR(50),
    Password VARCHAR(255),
    Email VARCHAR(255),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    ProfilePicture VARCHAR(255)
);
INSERT INTO User (UserID, Username, Password, Email, FirstName, LastName, DateOfBirth, ProfilePicture)
VALUES
(11, 'user1', 'password1', 'user1@example.com', 'John', 'Doe', '1990-01-01', 'profile1.jpg'),
(12, 'user2', 'password2', 'user2@example.com', 'Jane', 'Smith', '1995-05-15', 'profile2.jpg'),
(13, 'user3', 'password3', 'user3@example.com', 'Alice', 'Johnson', '1988-11-30', 'profile3.jpg'),
(14, 'user4', 'password4', 'user4@example.com', 'Bob', 'Williams', '1987-09-20', 'profile4.jpg'),
(15, 'user5', 'password5', 'user5@example.com', 'Emily', 'Brown', '1992-03-10', 'profile5.jpg'),
(16, 'user6', 'password6', 'user6@example.com', 'David', 'Jones', '1985-07-25', 'profile6.jpg'),
(17, 'user7', 'password7', 'user7@example.com', 'Sarah', 'Davis', '1998-02-18', 'profile7.jpg'),
(18, 'user8', 'password8', 'user8@example.com', 'Michael', 'Wilson', '1983-12-05', 'profile8.jpg'),
(19, 'user9', 'password9', 'user9@example.com', 'Jessica', 'Miller', '1993-09-12', 'profile9.jpg'),
(20, 'user10', 'password10', 'user10@example.com', 'Christopher', 'Taylor', '1997-06-08', 'profile10.jpg');

CREATE TABLE Gallery (
    GalleryID INT,
    Name VARCHAR(255),
    Description TEXT,
    Location VARCHAR(255),
    Curator INT,
    OpeningHours VARCHAR(255),
    FOREIGN KEY (Curator) REFERENCES Artist(ArtistID)
);


INSERT INTO Gallery (GalleryID, Name, Description, Location, Curator, OpeningHours)
VALUES
(111, 'Louvre Museum', 'Historic monument', 'Paris, France', 101, '9:00 AM - 6:00 PM'),
(112, 'Van Gogh Museum', 'Dedicated to the works of Vincent van Gogh', 'Amsterdam, Netherlands', 102, '9:00 AM - 5:00 PM'),
(113, 'Museo Picasso', 'Museum dedicated to Pablo Picasso', 'Barcelona, Spain', 103, '10:00 AM - 6:00 PM'),
(114, 'Musée d''Orsay', 'Art museum', 'Paris, France', 104, '9:30 AM - 6:00 PM'),
(115, 'Georgia O''Keeffe Museum', 'Museum dedicated to Georgia O''Keeffe', 'Santa Fe, New Mexico', 105, '10:00 AM - 5:00 PM'),
(116, 'Dalí Theatre-Museum', 'Salvador Dalí museum', 'Figueres, Spain', 106, '10:00 AM - 6:00 PM'),
(117, 'Chennai Art Gallery', 'Local art gallery showcasing Tamil Nadu artists', 'Chennai, India', 107, '10:00 AM - 7:00 PM'),
(118, 'British Museum', 'One of the largest and most comprehensive museums in the world', 'London, UK', 108, '10:00 AM - 5:30 PM'),
(119, 'Metropolitan Museum of Art', 'Art museum located in New York City', 'New York, USA', 109, '10:00 AM - 5:30 PM'),
(120, 'Louvre Abu Dhabi', 'Art and civilization museum', 'Abu Dhabi, UAE', 110, '10:00 AM - 8:00 PM'),
(121, 'National Gallery of Art', 'Art museum in Washington, D.C.', 'Washington, D.C., USA', 101, '10:00 AM - 5:00 PM'),
(122, 'Tokyo National Museum', 'Largest art museum in Japan', 'Tokyo, Japan', 103, '9:30 AM - 5:00 PM'),
(123, 'State Hermitage Museum', 'Art and culture museum', 'St. Petersburg, Russia', 106, '10:30 AM - 6:00 PM'),
(124, 'Museum of Modern Art (MoMA)', 'Modern and contemporary art museum', 'New York, USA', 108, '10:30 AM - 5:30 PM'),
(125, 'Uffizi Gallery', 'Art museum in Florence', 'Florence, Italy', 109, '8:15 AM - 6:50 PM');


CREATE TABLE User_Favorite_Artwork (
    UserID INT,
    ArtworkID INT,
    FOREIGN KEY (UserID) REFERENCES User(UserID),
    FOREIGN KEY (ArtworkID) REFERENCES Artwork(ArtworkID)
);


INSERT INTO User_Favorite_Artwork (UserID, ArtworkID)
VALUES
(11, 1),
(12, 3),
(13, 2),
(14, 5),
(15, 4),
(16, 6),
(17, 8),
(18, 7),
(19, 10),
(20 , 9),
(11, 9),
(12, 4),
(13, 6),
(14, 7),
(15, 3),
(16, 8),
(17, 4),
(18, 8),
(19, 5),
(20, 8);

CREATE TABLE Artwork_Gallery (
    ArtworkID INT,
    GalleryID INT,
    FOREIGN KEY (ArtworkID) REFERENCES Artwork(ArtworkID),
    FOREIGN KEY (GalleryID) REFERENCES Gallery(GalleryID)
);

INSERT INTO Artwork_Gallery (ArtworkID, GalleryID)
VALUES
(1, 111),
(2, 112),
(3, 113),
(4, 114),
(5, 115),
(6, 116),
(7, 117),
(8, 118),
(9, 119),
(10, 120),
(1, 111),
(2, 112),
(3, 113),
(4, 114),
(5, 115);
