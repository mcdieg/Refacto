class ArenaController < ApplicationController
    def home
    end

    # Simuler un combat entre deux joueurs sélectionnés dans l'action game
    def combat
        

        # Récupérer les deux objets combattants
        arr_combattants = []
        arr_combattants << combattant1 = Combattant.find(params[:combattants_selectionnes].first.to_i)
        arr_combattants << combattant2 = Combattant.find(params[:combattants_selectionnes].second.to_i)

        # Un objet pour reccueillir le rapport détaillé du combat
        @arr_rapport = []

        # Tableau recevant les points de vie des deux joueurs
        arr_p_vie = []
        arr_p_vie <<  combattant1.points_de_vie
        arr_p_vie <<  combattant2.points_de_vie

        # Tableau recevant les points d'attaque des deux joueurs
        arr_p_attaque = []
        arr_p_attaque <<  combattant1.points_d_attaque
        arr_p_attaque << combattant2.points_d_attaque


        # Continuer le combat tant qu'au moins un des deux joueurs a encore un nombre de points d'attaque positif
        # et qu'au moins 
        while arr_p_attaque.any? {|val| val > 0 } && arr_p_vie.all? {|val| val > 0}

            # Désigner le combattant qui attaque
            combattant_attaque = rand(0..1)
            @arr_rapport << "Le combattant #{arr_combattants[combattant_attaque].nom} porte un coup"

            # Indiquer que le coup a été porté par le combattant
            arr_p_attaque[combattant_attaque] -= 1

            # Nombre de points de vie perdus par attaque reçue
            nb_p_vie_perdus = rand(5..10)

            # 0 désigne le combattant 1 
            # 1 désigne le combattant 2
            if combattant_attaque == 0
                arr_p_vie[1] -= nb_p_vie_perdus 
                if arr_p_vie[1] < 0
                    arr_p_vie[1] = 0
                end

                @arr_rapport << "Le combattant #{arr_combattants[1].nom} perd #{nb_p_vie_perdus} point(s) de vie"
            else
                arr_p_vie[0] -= nb_p_vie_perdus
                if arr_p_vie[1] < 0
                    arr_p_vie[1] = 0
                end

                @arr_rapport << "Le combattant #{arr_combattants[0].nom} perd #{nb_p_vie_perdus} point(s) de vie"
            end
        end

        @arr_rapport << "Il reste #{arr_p_vie[0]} point(s) de vie au combattant #{arr_combattants[0].nom}."
        @arr_rapport << "Il reste #{arr_p_vie[1]} point(s) de vie au combattant #{arr_combattants[1].nom}."

        # Le combattant avec le plus fort restant de points a gagné !!!
        if arr_p_vie[0] > arr_p_vie[1]
          @victor = arr_combattants[0]
        else
            @victor = arr_combattants[1] 
        end
        @victor.update_attribute(:xp, @victor.xp += 10)
    end

    def victor
        if params[:combattants_selectionnes].nil? || params[:combattants_selectionnes].size < 2
             redirect_to '/arena/game' , notice: "Veuille choisir deux combattants s'il te plaît."
        else
            combat
        end

    end

    def game
        @combattants = Combattant.all
    end
end
