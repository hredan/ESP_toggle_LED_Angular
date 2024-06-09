import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';

export interface ServerResponse {
  success: boolean;
}

@Injectable({
  providedIn: 'root'
})
export class EspApiService{
  private baseUri: string = 'http://172.217.28.1';
  private headers = new HttpHeaders().set('Content-Type', 'application/x-www-form-urlencoded; charset=UTF-8');
  constructor(private http: HttpClient) { }
  public led(value: boolean): Observable<ServerResponse> {
    let body = "led=" + String(value);
    return this.http.post<ServerResponse>(this.baseUri + '/setLed', body, { headers: this.headers });
  }
}
