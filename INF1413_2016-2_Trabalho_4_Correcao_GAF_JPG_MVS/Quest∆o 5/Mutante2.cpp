/// Mutante 2 (Troca variável por constante do mesmo tipo): (MORTO!)

////////////////////////////////////////////////////////////////////////////
// 
// Method: SMT  !Insert symbol

   SMTE_SymbolTableElement * SMT_SymbolTable ::
             InsertSymbol( SMTE_SymbolTableElement * pSymbol )
   {

   #ifdef _DEBUG
      EXC_ASSERT( pSymbol != NULL ) ;
   #endif

      if ( SearchSymbol( 0 ,  // Troca de 'pSymbol->GetSymbolString( )->GetLength( )' pelo valor constante '0'
                         pSymbol->GetSymbolString( )->GetString( )) != NULL )
      {
         return pSymbol ;
      } /* if */

      pCollisionList->InsertAfter( pSymbol ) ;

      return NULL ;

   } // End of function: SMT  !Insert symbol