import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
//componentes
import { ArticleComponent } from './components/article/article.component';
import { TransaccionComponent } from './components/transaccion/transaccion.component';


const appRoutes: Routes = [
  { path: '', redirectTo: '/article', pathMatch: 'full' },
  { path: 'article', component: ArticleComponent },
  { path: 'transaccion', component: TransaccionComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(appRoutes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
