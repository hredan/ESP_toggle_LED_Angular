import { Component, OnInit} from '@angular/core';
import { FormsModule } from '@angular/forms';
import { RouterOutlet } from '@angular/router';
import { MatSlideToggleModule, MatSlideToggleChange } from '@angular/material/slide-toggle';
import { MatCardModule } from '@angular/material/card';

import { EspApiService } from './esp-api.service'

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet, FormsModule, MatSlideToggleModule, MatCardModule],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent implements OnInit{
  title = 'my-app';
  isChecked = false;
  ledStatus = 'Off'

  constructor(
    private espApiService: EspApiService
  ) { }

  ngOnInit() {
    this.espApiService.led(false).subscribe(data => {
      if (data.success) {
        console.log("OnInit: send led off");
      }
      else {
        console.log("OnInit: send led off failed");
      }
      
    });
  }

  public toggle(event: MatSlideToggleChange) {
    console.log('toggle', event.checked);
    let body = new URLSearchParams();
  
    if (event.checked) {
      this.ledStatus = 'On';
      body.set('led', 'true');
    }
    else {
      this.ledStatus = 'Off';
      body.set('led', 'false');
    }

    this.espApiService.led(event.checked).subscribe(data => {
      console.log(data);
    });
}
}
