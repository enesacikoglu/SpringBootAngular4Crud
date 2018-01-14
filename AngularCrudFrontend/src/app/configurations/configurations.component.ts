import { Component, OnInit } from '@angular/core';

import {ConfigurationService} from './shared/configuration.service'
@Component({
  selector: 'app-configurations',
  templateUrl: './configurations.component.html',
  styleUrls: ['./configurations.component.css'],
  providers:[ConfigurationService]
})
export class ConfigurationsComponent implements OnInit {

  constructor(private configurationService : ConfigurationService) { }

  ngOnInit() {
  }

}
