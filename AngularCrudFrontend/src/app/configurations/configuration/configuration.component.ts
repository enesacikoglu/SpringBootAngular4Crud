import { Component, OnInit } from '@angular/core';
import { NgForm } from '@angular/forms'

import { ConfigurationService } from '../shared/configuration.service'
import { ToastrService } from 'ngx-toastr'

@Component({
  selector: 'app-configuration',
  templateUrl: './configuration.component.html',
  styleUrls: ['./configuration.component.css']
})
export class ConfigurationComponent implements OnInit {

  constructor(private configurationService: ConfigurationService, private toastr: ToastrService) { }

  public types = [
    { value: 'String', display: 'String' },
    { value: 'Double', display: 'Double' },
    { value: 'Integer', display: 'Integer' },
    { value: 'Boolean', display: 'Boolean' }
  ]

  ngOnInit() {
    this.resetForm();
  }

  resetForm(form?: NgForm) {
    if (form != null)
      form.reset();
    this.configurationService.selectedConfiguration = {
      id: null,
      name: '',
      type: this.types[0].value,
      value: '',
      isActive: false,
      applicationName: ''
    }
  }

  onSubmit(form: NgForm) {
    if (form.value.id == null) {
      this.configurationService.postConfiguration(form.value)
        .subscribe(data => {
          this.resetForm(form);
          this.configurationService.getConfigurationList();
          this.toastr.success('New Record Added Succcessfully', 'Configuration Register');
        })
    }
    else {
      this.configurationService.putConfiguration(form.value.id, form.value)
        .subscribe(data => {
          this.resetForm(form);
          this.configurationService.getConfigurationList();
          this.toastr.info('Record Updated Successfully!', 'configuration Register');
        });
    }
  }
}
