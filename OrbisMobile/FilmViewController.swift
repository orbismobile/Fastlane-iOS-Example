//
//  FilmViewController.swift
//  OrbisMobile
//
//  Created by Erik Flores on 4/22/18.
//  Copyright © 2018 Orbis Mobile. All rights reserved.
//

import UIKit
import Alamofire

struct Film {
    var title: String
}

class FilmViewController: UIViewController {
    
    @IBOutlet weak var filmsTableView: UITableView!
    
    var films: [Film] = [] {
        didSet {
            filmsTableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        filmsTableView.dataSource = self
        getFilms()
    }
    
    func getFilms() {
        guard let filmUrl = URL(string: "https://swapi.co/api/films") else {
            fatalError("Bad URL")
        }
        Alamofire.request(filmUrl).responseJSON { (response) in
            guard let json = response.result.value as? [String: Any] else {
                return
            }
            guard let results = json["results"] as? [[String: Any]] else {
                return
            }
            for film in results {
                let title = film["title"] as? String ?? ""
                self.films.append(Film(title: title))
            }
        }
    }

}

extension FilmViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellDequeue = tableView.dequeueReusableCell(withIdentifier: "filmCell", for: indexPath)
        cellDequeue.textLabel?.text = films[indexPath.row].title
        return cellDequeue
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return films.count
    }
}

