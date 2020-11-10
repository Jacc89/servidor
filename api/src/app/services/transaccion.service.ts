import { Injectable } from "@angular/core";
import { HttpClient, HttpHeaders } from "@angular/common/http";
import { Observable } from "rxjs";
import { catchError, retry } from 'rxjs/operators';
// Variable de entorno
import { environment } from "src/environments/environment";
// modelo de tabla de base datos

import { Transaccion } from "../models/transaccion";

@Injectable({
  providedIn: "root",
})
export class TransaccionService {
  //URL for CRUD operations cambiada por variable de entorno.
  // transaccionUrl = "http://localhost:3000";

  //Create constructor to get Http instance
  constructor(protected http: HttpClient) {}

  //Fetch all Transacciones
  getAllTransacciones() {
    return this.http.get(`${environment.articleUrl}/transaccion/get-transacciones`);
  }// asi usas la variable de entorno en cada servicio

  //Create transacciones
  createTransaccion(transaccion: Transaccion): Observable<any> {
    let headers = new HttpHeaders();
    headers = headers.set("Content-Type", "application/json");
    return this.http.post<any>(
      environment.articleUrl + "/transaccion/create-transaccion",
      JSON.stringify(transaccion),
      { headers: headers }
    );
  }
   //Update article
   updateTransaccion(transaccion: Transaccion): Observable<any> {
    let headers = new HttpHeaders()
    headers = headers.set("Content-Type", "application/json");
    return this.http.put<any>(
      environment.articleUrl + "/transaccion/update-transaccion",
      JSON.stringify(transaccion),
      { headers: headers }
    );   
  }
   //  la ip
    getIPAddress(){  
    return this.http.get("http://api.ipify.org/?format=json");  
  }  

  protected extractData(res: Response) {
    let body = res.json();
    console.log(body);
    return body;
  }
  protected handleError(error: Response | any) {
    console.error(error.message || error);
    return Observable.throw(error.status);
  }
 
}
