League.create(name:"Liga Oriente de Futbol")
	Cup.create(name:"Futbol Junior Domingos", league_id: 1)
		Version.create(name:"Apertura 2015", cup_id: 1)
			Inscription.create(version_id: 1, team_id: 1)
				Team.create(name:"Cruzados")
					User.create(name:"Felipe", lastname:"Rodriguez")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Manuel", lastname:"Cruz")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Sebastian", lastname:"Irarrazabal")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Juan Jose", lastname:"Ossul")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Jose", lastname:"Alcalde")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Raimundo", lastname:"Donoso")
						User.last.teams << Team.last
			
			Inscription.create(version_id: 1, team_id: 2)
				Team.create(name:"Maestros")
					User.create(name:"Luis Felipe", lastname:"Sande")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Vicente", lastname:"Ossandon")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Ignacio", lastname:"Milnes")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Pablo", lastname:"Mackena")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Agustin", lastname:"Concha")
						User.last.teams << Team.last
			
			Inscription.create(version_id: 1, team_id: 3)
				Team.create(name:"Riverpool")
					User.create(name:"Konstantino", lastname:"Paterakis")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Pablo", lastname:"Guarda")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Pablo", lastname:"Ponce")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Juan Enrique", lastname:"Arze")
						User.last.teams << Team.last
							Inscription.last.users << User.last
			
			Inscription.create(version_id: 1, team_id: 4)
				Team.create(name:"Verbo")
					User.create(name:"Martin", lastname:"Andrade")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Matias", lastname:"Dittborn")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Sebastian", lastname:"Comandari")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Diego", lastname:"Comandari")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Pablo", lastname:"Alcalde")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Gonzalo", lastname:"Falcone")
						User.last.teams << Team.last
							Inscription.last.users << User.last
			
			Inscription.create(version_id: 1, team_id: 5)
				Team.create(name:"Canilla")
					User.create(name:"Cristobal", lastname:"Eguiguren")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Tomas", lastname:"Icaza")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Julian", lastname:"Smart")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Jose Ignacio", lastname:"Amenabar")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Matias", lastname:"Humud")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Gustavo", lastname:"Ramhdor")
						User.last.teams << Team.last
							Inscription.last.users << User.last
			
			Inscription.create(version_id: 1, team_id: 6)
				Team.create(name:"Coco Bongo")
					User.create(name:"Guillermo", lastname:"Spoerer")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Samuel", lastname:"Achurra")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Tomas", lastname:"Guilisasti")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Juan Pablo", lastname:"Andrews")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Benjamin", lastname:"Mathews")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Benjamin", lastname:"Frascaroli")
						User.last.teams << Team.last
							Inscription.last.users << User.last
			
			Inscription.create(version_id: 1, team_id: 7)
				Team.create(name:"NLC John")
					User.create(name:"Martin", lastname:"Melo")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Patricio", lastname:"Oelckers")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Tito", lastname:"Vergara")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Agustin", lastname:"Valdivieso")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Pelayo", lastname:"Achondo")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Arturo", lastname:"Williamson")
						User.last.teams << Team.last
							Inscription.last.users << User.last
			
			Inscription.create(version_id: 1, team_id: 8)
				Team.create(name:"Patada Descendente")
					User.create(name:"Ismael", lastname:"Vergara")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Ignacio", lastname:"Gago")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Vicente", lastname:"Lorca")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Juan Jose", lastname:"Silva")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Vicente", lastname:"Silva")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Felipe", lastname:"Vergara")
						User.last.teams << Team.last
							Inscription.last.users << User.last
			
			Inscription.create(version_id: 1, team_id: 9)
				Team.create(name:"Lucho Mena")
					User.create(name:"Alejandro", lastname:"Marinetti")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Raimundo", lastname:"Castro")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Juan Enrique", lastname:"Vial")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Pablo", lastname:"Ugarte")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Cristian", lastname:"Valenzuela")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Ignacio", lastname:"Camus")
						User.last.teams << Team.last
							Inscription.last.users << User.last
			
			Inscription.create(version_id: 1, team_id: 10)
				Team.create(name:"Seloka")
					User.create(name:"Cristobal", lastname:"Binimellis")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Felipe", lastname:"Bishara")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Diego", lastname:"Tagle")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Ernesto", lastname:"Lira")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Juan de Dios", lastname:"Vial")
						User.last.teams << Team.last
							Inscription.last.users << User.last
					User.create(name:"Martin", lastname:"Cox")
						User.last.teams << Team.last
							Inscription.last.users << User.last


			Stage.create(name:"Primera Fase", version_id:1)
				Group.create(name:'Grupo 1', stage_id: 1)
					Group.find(1).inscriptions << Inscription.find(1)
					Group.find(1).inscriptions << Inscription.find(2)
					Group.find(1).inscriptions << Inscription.find(3)
					Group.find(1).inscriptions << Inscription.find(4)
					Group.find(1).inscriptions << Inscription.find(5)
				Group.create(name:'Grupo 2', stage_id: 1)
					Group.find(2).inscriptions << Inscription.find(6)
					Group.find(2).inscriptions << Inscription.find(7)
					Group.find(2).inscriptions << Inscription.find(8)
					Group.find(2).inscriptions << Inscription.find(9)
					Group.find(2).inscriptions << Inscription.find(10)


			Stage.create(name:"Segunda Fase", version_id:1)
