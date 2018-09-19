//
//  ViewController.swift
//  NavegacionTableView
//
//  Created by Alumno on 19/09/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let materias: [Materia] = [Materia(nombre: "Programaciòn de dispositivos mòviles"),
    Materia(nombre: "Tratamiento de imagen"),
    Materia(nombre: "Redes computacionales"),
    Materia(nombre: "Animaciòn 1"),
    Materia(nombre: "Mercadotecnia"),
    Materia(nombre: "Mexico en el contexto global"),
    Materia(nombre: "Pensamiento social cristiano")]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return materias.count
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "CellMateria") as! CeldaMateria
        celda.lblNombre.text = materias[indexPath.row].nombre
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 107
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Materias"
        materias[0].calificacionPrimerParcial = 10
        materias[2].calificacionSegundoParcial = 9
        materias[3].calificacionTercerParcial = 7
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

