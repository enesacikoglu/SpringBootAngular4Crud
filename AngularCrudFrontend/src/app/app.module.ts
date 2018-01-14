import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule} from '@angular/forms'
import { HttpModule } from '@angular/http'

import { AppComponent } from './app.component';
import { ConfigurationsComponent } from './configurations/configurations.component';
import { ConfigurationComponent } from './configurations/configuration/configuration.component';
import { ConfigurationListComponent } from './configurations/configuration-list/configuration-list.component';
import { ToastrModule } from 'ngx-toastr';

@NgModule({
  declarations: [
    AppComponent,
    ConfigurationsComponent,
    ConfigurationComponent,
    ConfigurationListComponent
  ],
  imports: [
    BrowserModule,
    FormsModule,
    HttpModule,
    ToastrModule.forRoot()
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
