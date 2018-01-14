import { Component, OnInit } from '@angular/core';

import { ConfigurationService } from '../shared/configuration.service'
import { Configuration } from '../shared/configuration.model';
import { ToastrService } from 'ngx-toastr';    
@Component({
  selector: 'app-configuration-list',
  templateUrl: './configuration-list.component.html',
  styleUrls: ['./configuration-list.component.css']
})
export class ConfigurationListComponent implements OnInit {

  constructor(private configurationService: ConfigurationService,private toastr : ToastrService) { }

  ngOnInit() {
    this.configurationService.getConfigurationList();
  }

  showForEdit(conf: Configuration) {
    this.configurationService.selectedConfiguration = Object.assign({}, conf);;
  }


  onDelete(id: number) {
    if (confirm('Are you sure to delete this record ?') == true) {
      this.configurationService.deleteConfiguration(id)
      .subscribe(x => {
        this.configurationService.getConfigurationList();
        this.toastr.warning("Deleted Successfully","configuration Register");
      })
    }
  }
}
