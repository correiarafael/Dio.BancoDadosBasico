CREATE TABLE HistoricoViagens(
	IdNave int NOT NULL,
	IdPiloto int NOT NULL,
	DtSaida datetime NOT NULL,
	DtChegada datetime NOT NULL
)
GO
ALTER TABLE HistoricoViagens ADD CONSTRAINT FK_HistoricoViagens_PilotosNaves FOREIGN kEY (IdPiloto, IdNave)
REFERENCES PilotosNaves (IdPiloto,IdNave)
GO

ALTER TABLE HistoricoViagens ChecK Constraint FK_HistoricoViagens_PilotosNaves