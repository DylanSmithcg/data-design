USE dsmith265;
ALTER DATABASE dsmith265 CHARACTER SET utf8 COLLATE utf8_unicode_ci;

CREATE TABLE category(
	categoryId BINARY(16) NOT NULL,
	categoryArtistId BINARY(16) NOT NULL,
	categoryArtPostId BINARY(16) NOT NULL,
	categoryArtPostStyleId BINARY(16) NOT NULL,
	FOREIGN KEY(categoryArtistId) REFERENCES artist(artistId),
	FOREIGN KEY(categoryArtPostId) REFERENCES artPost(artPostId),
	UNIQUE(categoryId),
	INDEX(categoryId),
	PRIMARY KEY(categoryId)
);

CREATE TABLE artPost(
	artPostId BINARY(16) NOT NULL,
	artPostArtistId BINARY(16) NOT NULL,
	artPostCategoryId BINARY(16) NOT NULL,
	artPostDescription VARCHAR(255),
	UNIQUE(artPostId),
	INDEX(artPostId),
	FOREIGN KEY(artPostArtistId) REFERENCES artist(artistId),
	FOREIGN KEY(artPostCategoryId) REFERENCES category(categoryId),
	PRIMARY KEY(artPostId)
);

CREATE TABLE artist(
	artistId BINARY(16) NOT NULL,
	artistArtPostId BINARY(16) NOT NULL,
	UNIQUE(artistId),
	FOREIGN KEY(artistArtPostId) REFERENCES artPost(artPostId),
	PRIMARY KEY(artistId)
);


