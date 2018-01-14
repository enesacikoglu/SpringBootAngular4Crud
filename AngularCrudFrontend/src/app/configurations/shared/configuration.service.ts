import { Injectable } from '@angular/core';
import { Http, Response, Headers, RequestOptions, RequestMethod } from '@angular/http';
import { Observable } from 'rxjs/Observable';
import 'rxjs/add/operator/map';
import 'rxjs/add/operator/toPromise';

import { Configuration } from './configuration.model'

@Injectable()
export class ConfigurationService {

  selectedConfiguration: Configuration;
  configurationList: Configuration[];
  constructor(private http: Http) { }

  postConfiguration(conf: Configuration) {
    var body = JSON.stringify(conf);
    var headerOptions = new Headers({ 'Content-Type': 'application/json' });
    var requestOptions = new RequestOptions({ method: RequestMethod.Post, headers: headerOptions });
    return this.http.post('http://localhost:8080/api/ang/configuration', body, requestOptions).map(x => x.json());
  }

  putConfiguration(id, conf) {
    var body = JSON.stringify(conf);
    var headerOptions = new Headers({ 'Content-Type': 'application/json' });
    var requestOptions = new RequestOptions({ method: RequestMethod.Put, headers: headerOptions });
    return this.http.put('http://localhost:8080/api/ang/configuration/' + id,
      body,
      requestOptions).map(res => res.json());
  }
  getConfigurationList() {
    this.http.get('http://localhost:8080/api/ang/configurations')
      .map((data: Response) => {
        return data.json() as Configuration[];
      }).toPromise().then(x => {
        this.configurationList = x;
      })
  }

  deleteConfiguration(id: number) {
    return this.http.delete('http://localhost:8080/api/ang/configuration/' + id).map(res => res.json());
  }
}
