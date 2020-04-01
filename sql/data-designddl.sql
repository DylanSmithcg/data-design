USE dsmith265;
ALTER DATABASE dsmith265 CHARACTER SET utf8 COLLATE utf8_unicode_ci;

CREATE TABLE category(
	categoryId BINARY(16) NOT NULL,
	artPostCategoryCategoryId BINARY(16) NOT NULL,
	FOREIGN KEY(artPostCategoryCategoryId) REFERENCES artPost(artPostId),
	UNIQUE(categoryId),
	INDEX(categoryId),
	PRIMARY KEY(categoryId)
);

CREATE TABLE artPost(
	artPostId BINARY(16) NOT NULL,
	artPostArtistId BINARY(16) NOT NULL,
	artPostCategoryArtPostId BINARY(16) NOT NULL,
	artPostDescription VARCHAR(255),
	UNIQUE(artPostId),
	INDEX(artPostId),
	FOREIGN KEY(artPostArtistId) REFERENCES artist(artistId),
	FOREIGN KEY(artPostCategoryArtPostId) REFERENCES category(categoryId),
	PRIMARY KEY(artPostId)
);

CREATE TABLE artist(
	artistId BINARY(16) NOT NULL,
	UNIQUE(artistId),
	PRIMARY KEY(artistId)
);


