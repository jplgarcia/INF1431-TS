/// Mutante 1 (Troca de operador relacional): (MORTO!)

////////////////////////////////////////////////////////////////////////////
// 
// Method: SMT  !Insert symbol

   SMTE_SymbolTableElement * SMT_SymbolTable ::
             InsertSymbol( SMTE_SymbolTableElement * pSymbol )
   {

   #ifdef _DEBUG
      EXC_ASSERT( pSymbol != NULL ) ;
   #endif

      if ( SearchSymbol( pSymbol->GetSymbolString( )->GetLength( ) ,
                         pSymbol->GetSymbolString( )->GetString( )) == NULL ) // Troca de '!=' por '=='
      {
         return pSymbol ;
      } /* if */

      pCollisionList->InsertAfter( pSymbol ) ;

      return NULL ;

   } // End of function: SMT  !Insert symbol