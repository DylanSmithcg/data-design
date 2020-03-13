USE dsmith265;
ALTER DATABASE dsmith265 CHARACTER SET utf8 COLLATE utf8_unicode_ci;

CREATE TABLE category(
	categoryId
	categoryArtPieceId
	categoryArtPieceStyleId
	categoryArtistId
);

CREATE TABLE artPiece(
	artPieceId
	artPieceStyleId
	artPieceDescription
	artPieceArtistId
	artpieceArtististDescription
);

CREATE TABLE artist(
	artistId
	artistArtPieceId
);


