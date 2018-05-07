package br.ufc.russas.controller;

import java.util.List;
import br.ufc.russas.dao.DAOCriterioTrilha;
import br.ufc.russas.model.CriterioTrilha;

public class CriterioTrilhaController {
	
	private DAOCriterioTrilha daoCriterioTrilha;
	
	public CriterioTrilhaController() {
		
		daoCriterioTrilha = new DAOCriterioTrilha();
	}
	
	public void criar(CriterioTrilha criterioTrilha){
        daoCriterioTrilha.create(criterioTrilha);
    }
    
	public  List<CriterioTrilha> listar(){
        return daoCriterioTrilha.read();
    }
	
	public CriterioTrilha buscar(int idCriterioTrilha){
        return daoCriterioTrilha.getCriterioTrilha(idCriterioTrilha);
    }
	
	public void atualizar(CriterioTrilha criterioTrilha){
        daoCriterioTrilha.update(criterioTrilha);
    }
	
	public void deletar(int idCriterioTrilha){
        daoCriterioTrilha.delete(idCriterioTrilha);
    }

}
