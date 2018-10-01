//
//  ViewController.swift
//  Practica5
//
//  Created by Alan Olivares on 09/09/18.
//  Copyright © 2018 Alan Olivares. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate{
    var peli=["La monja","La sirenita","Alfa","Slender Man","Ana y Bruno","Rendel","Union","Idioma","Hazlo como Hombre","Ya veremos"]
    var sip=["Cuando una joven monja se quita la vida en un aislado monasterio de clausura en Rumanía, el Padre Burke (Demián Bichir), un sacerdote con un pasado vinculado a los encantamientos que le persigue, es enviado por el Vaticano para investigar este suicidio junto a una novicia (Taissa Farmiga) a punto de tomar sus votos.","Ariel es la hija del rey Tritón, además de una intrépida y simpática sirenita. Cansada de sus obligaciones como princesa, su mayor deseo es abandonar el reino de los mares para tener una vida normal en la superficie. Una vida en la que no sea reconocida por todos.","Alpha es una película de aventura y de drama histórica dirigida por Albert Hughes, y escrita por Daniele Sebastian Wiedenhaupt a partir de una historia de Hughes.","Cuatro adolescentes de un pequeño pueblo invocan en un ritual a una criatura alta, delgada y espeluznante llamada Slender Man.","Ana es una curiosa niña que escapa en busca de su padre para salvar a su madre.","Rendel es una película de superhéroes finlandesa 2017 escrita, producida y dirigida por Jesse Haaja.","El día de la unión narra la historia de Javier, un taxista al que el destino lleva a trabajar cerca del hotel Regis el 19 de septiembre de 1985","Un lingüista llega a un pueblo en la selva para estudiar el zikril, un idioma que está a punto de extinguirse, ya que sólo quedan dos hablantes nativos con vida, Evaristo e Isauro.","Raúl, Eduardo y Santiago son amigos desde la infancia. Santiago les confiesa a sus amigos que es gay y Raúl piensa que simplemente está confuso.","Santi (Emiliano Aramayo) es un niño que ha tenido que lidiar con la separación de sus padres, Rodrigo (Mauricio Ochmann) y Alejandra (Fernanda Castillo). Ellos están obligados a verse de vez en cuando, ya que comparten el tiempo de su hijo."]
    var trailer=["https://www.youtube.com/watch?v=eqVjGwYFVqQ","https://www.youtube.com/watch?v=RrK67WDot_o","https://www.youtube.com/watch?v=Kq_WhFF59jA","https://www.youtube.com/watch?v=RhgeNY24wZY","https://www.youtube.com/watch?v=4MFURbSQbpw","https://www.youtube.com/watch?v=6O989miBqkQ","https://www.youtube.com/watch?v=kB5sjw4lTPU","https://www.youtube.com/watch?v=g7IDeyJ4L58","https://www.youtube.com/watch?v=gkxgtPIUuGg","https://www.youtube.com/watch?v=Cx43SzczJd0"]
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peli.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell=UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "celda")
        cell.textLabel?.text  = peli[indexPath.row]
        cell.imageView!.image = UIImage(named: peli[indexPath.row])!
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alert = UIAlertController(title: peli[indexPath.row], message: sip[indexPath.row], preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Trailer", style: .default, handler:{
            (action:UIAlertAction!) -> Void in
            UIApplication.shared.openURL(NSURL(string: self.trailer[indexPath.row])! as URL)
        }))
        self.present(alert, animated: true, completion: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

