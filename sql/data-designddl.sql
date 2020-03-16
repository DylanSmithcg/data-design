USE dsmith265;
ALTER DATABASE dsmith265 CHARACTER SET utf8 COLLATE utf8_unicode_ci;

CREATE TABLE category(
	categoryId BINARY(16) NOT NULL,
	categoryArtistId BINARY(16) NOT NULL,
	categoryArtPieceId BINARY(16) NOT NULL,
	categoryArtPieceStyleId VARCHAR(30) NOT NULL,
	FOREIGN KEY(categoryArtistId) REFERENCES artist(artistId),
	FOREIGN KEY(categoryArtPieceId) REFERENCES artPiece(artPieceId),
	UNIQUE(categoryId),
	PRIMARY KEY(categoryId)
);

CREATE TABLE artPiece(
	artPieceId BINARY(16) NOT NULL,
	artPieceArtistDescription VARCHAR(255),
	artPieceArtistId BINARY(16) NOT NULL,
	artPieceCategoryId BINARY(16),
	artPieceDescription VARCHAR(255) NOT NULL,
	INDEX(artPieceCategoryId),
	FOREIGN KEY(artPieceArtistId) REFERENCES artist(artistId),
	FOREIGN KEY(artPieceCategoryId) REFERENCES category(categoryId),
	PRIMARY KEY(artPieceId)
);

CREATE TABLE artist(
	artistId BINARY(16) NOT NULL,
	artistArtPieceId BINARY(16) NOT NULL,
	FOREIGN KEY(artistArtPieceId) REFERENCES artPiece(artPieceId),
	PRIMARY KEY(artistId)
);


