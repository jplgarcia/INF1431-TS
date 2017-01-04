/// Mutante 3 (Troca variável por constante do mesmo tipo): (MORTO!)

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
                         "") != NULL ) // Troca de 'pSymbol->GetSymbolString( )->GetString( )' pelo valor constante ' "" ' (string vazia)
      {
         return pSymbol ;
      } /* if */

      pCollisionList->InsertAfter( pSymbol ) ;

      return NULL ;

   } // End of function: SMT  !Insert symbol