//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import UIKit
import CTPersistance

class ___FILEBASENAMEASIDENTIFIER___: CTPersistanceTable {

}


extension DiaryTable: CTPersistanceTableProtocol {
    /**
     *  the name of the primary key.
     *
     *  @return return the name of the primary key.
     */
    func primaryKeyName() -> String! {
        return ""
    }
    
    /**
     *  the Class of the record.
     *
     *  CTPersistanceTable will transform data into the object you want, so this class is the class of the result object you want CTPersistanceTable to transform. You can add a setter for recordClass in order to change the class every time CTPersisitanceTable fetches data.
     *
     *  @return return the class of the record
     */
    func recordClass() -> AnyClass! {
        return ___FILEBASENAMEASIDENTIFIER___.self
    }
    
    /**
     *  column info with this table. If table not exists in database, CTPersistance will create a table based on the column info you provided
     *
     *  @return return the column info of your table
     */
    func columnInfo() -> [AnyHashable : Any]! {
        return ["": "INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL",
                "": "TEXT"
        ]
    }
    
    /**
     *  the name of your table
     *
     *  @return return the name of your table
     */
    func tableName() -> String! {
        return ""
    }
    
    /**
     *  return the name of databse file, CTPersistanceDatabasePool will create CTDatabase by this string.
     *
     *  @return return the name of database file
     */
    func databaseName() -> String! {
        return ""
    }
    
    
}
