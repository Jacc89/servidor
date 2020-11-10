import { Injectable } from "@angular/core";
import { HttpClient, HttpHeaders } from "@angular/common/http";
import { Observable } from "rxjs";
import { catchError, retry } from 'rxjs/operators';

import { Article } from "../models/article";
import { TransaccionComponent } from "../components/transaccion/transaccion.component";
import { Transaccion } from "../models/transaccion";
import { Router } from '@angular/router';
// Variable de entorno
import { environment } from "src/environments/environment";


@Injectable()
export class ArticleService {
  //URL for CRUD operations
  // articleUrl = "http://localhost:3000";
  // articleUrl = "https://18.212.15.234:3004";
 
  // articleUrl = "https://server3.azlogica.com:3200";
  
  //Create constructor to get Http instancenpm start
  constructor(private http: HttpClient, router:Router) {}

  //Fetch all articles

  getAllArticles() {
    console.log("getAllarticle");
    let headers = new HttpHeaders();
    headers = headers.set("Content-Type", "application/json");
    return this.http.get(environment.articleUrl + "/article/get-article");
   
  }
  //Create article
  createArticle(article: Article): Observable<any> {
    let headers = new HttpHeaders();
    headers = headers.set("Content-Type", "application/json");
    return this.http.post(
      environment.articleUrl + "/article/create-article",
      JSON.stringify(article),
      { headers: headers }
    );
  }

  //Fetch article by id
  getArticleById(articleId: string) {
    let headers = new Headers({ "Content-Type": "application/json" });
    console.log(environment.articleUrl + "/get-article-by-id?id=" + articleId);
    return this.http.get(
      `${environment.articleUrl}/article/get-article-by-id?id=${articleId}`
    );
  }
  //Update article
  updateArticle(article: Article) {
    let headers = new HttpHeaders();
    headers = headers.set("Content-Type", "application/json");
    return this.http.put(
      environment.articleUrl + "/article/update-article",
      JSON.stringify(article),
      { headers: headers }
    );
  }
  //Delete article
  deleteArticleById(articleId: string) {
    let headers = new HttpHeaders({ "Content-Type": "application/json" });
    return this.http.delete(
      environment.articleUrl + "/article/delete-article?id=" + articleId
    );
  }
  //  la ip
  getIPAddress(){  
    return this.http.get("http://api.ipify.org/?format=json");  
  }  

  private extractData(res: Response) {
    let body = res.json();
    console.log(body);
    return body;
  }
  private handleError(error: Response | any) {
    console.error(error.message || error);
    return Observable.throw(error.status);
  }

}
